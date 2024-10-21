import { v2 as cloudinary } from 'cloudinary';

(async function() {

    // Configuration
    cloudinary.config({
        cloud_name: 'dvl7hd2rv',
        api_key: '139642627262146',
        api_secret: '<Jmej66KYl9rif-X9-W5wCkIL3W4' // Replace with your actual API secret
    });

    // Upload multiple images
    const images = [
        'app/images/hp_logo.jpg',
        'app/images/meta.png',
        'app/images/google.png',
        'app/images/ibm.png',
        'app/images/basf.png',
        'app/images/arm.png'
    ];

    try {
        const uploadedImages = await Promise.all(
            images.map(imagePath => {
                return cloudinary.uploader.upload(
                    imagePath, {
                        public_id: imagePath.replace(/app\/images\//, ''),
                    }
                );
            })
        );

        console.log('Uploaded images:', uploadedImages);
    } catch (error) {
        console.error('Error uploading images:', error);
    }

    // Optimize delivery by resizing and applying auto-format and auto-quality
    const optimizeUrl = cloudinary.url('shoes', {
        fetch_format: 'auto',
        quality: 'auto'
    });

    console.log(optimizeUrl);

    // Transform the image: auto-crop to square aspect_ratio
    const autoCropUrl = cloudinary.url('shoes', {
        crop: 'auto',
        gravity: 'auto',
        width: 500,
        height: 500,
    });

    console.log(autoCropUrl);
})();
